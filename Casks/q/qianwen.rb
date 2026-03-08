cask "qianwen" do
  version "2.3.1,2602272247"
  sha256 "85e5ac5742c4bc4ae296ae6a3d87b72a59a4e5b2570dec74592fc847aacdad65"

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
