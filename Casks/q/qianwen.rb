cask "qianwen" do
  version "1.2.1,251121206"
  sha256 "5fbd320c52f8a3f7a990ee7b461f11d154562c64ee7b96cecc0ea1772ab9e5ec"

  url "https://qianwen-portal-cdn.tongyi.com/native/app/#{version.csv.first}/darwin/universal/qwenclient_setup_#{version.csv.first}.#{version.csv.second}.dmg"
  name "qianwen"
  name "千问"
  desc "AI assistant and chatbot powered by Alibaba's Qwen model"
  homepage "https://www.tongyi.com/qianwen"

  livecheck do
    url "https://www.tongyi.com/qianwen"
    regex(%r{"mac":"https://qianwen-portal-cdn\.tongyi\.com/native/app/([\d.]+)/darwin/universal/qwenclient_setup_[\d.]+\.(\d+)\.dmg"})
    strategy :page_match do |page, regex|
      match = page.match(regex)
      "#{match[1]},#{match[2]}" if match
    end
  end

  app "Qianwen.app"

  zap trash: [
    "~/Library/Application Support/Qianwen",
    "~/Library/Logs/Qianwen",
    "~/Library/Preferences/com.alibaba.tongyi.plist",
  ]
end
