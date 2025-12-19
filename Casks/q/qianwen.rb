cask "qianwen" do
  version "1.2.3,2512151438"
  sha256 "70569e8c828eb677c0a1bedc114c48d505d0cd6807137d480c3b40c0ba204784"

  url "https://qianwen-portal-cdn.tongyi.com/native/app/#{version.csv.first}/darwin/universal/qwenclient_setup_#{version.csv.first}#{".#{version.csv.second}" if version.csv.second}.dmg",
      verified: "qianwen-portal-cdn.tongyi.com/native/app/"
  name "qianwen"
  name "千问"
  desc "AI assistant and chatbot powered by Alibaba's Qwen model"
  homepage "https://www.qianwen.com/qianwen"

  livecheck do
    url :homepage
    regex(%r{/v?(\d+(?:\.\d+)+)/darwin/universal/qwenclient[._-]setup[._-]\1(?:\.(\d+))?\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next unless match

      match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  app "Qianwen.app"

  zap trash: [
    "~/Library/Application Support/Qianwen",
    "~/Library/Logs/Qianwen",
    "~/Library/Preferences/com.alibaba.tongyi.plist",
  ]
end
