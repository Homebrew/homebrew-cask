cask "lark" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "8.7.16,dd5901f1"
    sha256 "850bea0d3fad15319aa6b9101b7c8ec052b1e3cd1e2dd11d347cc6d5d4cf2767"
  end
  on_intel do
    version "8.7.16,4ada4db0"
    sha256 "95248d0a5af094d6a677bcc13c8b003ccadfc3990906a21491f80313aefebc04"
  end

  url "https://sf16-sg.larksuitecdn.com/obj/lark-version-sg/#{version.csv.second}/Lark-darwin_#{arch}-#{version.csv.first}-signed.dmg"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  livecheck do
    url "https://www.larksuite.com/api/downloads"
    regex(%r{/lark-version-sg/(\h+)/Lark[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)[._-]signed\.dmg}i)
    strategy :json do |json, regex|
      match = json.dig("versions", "MacOS#{livecheck_arch}", "download_link")&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on :macos

  app "LarkSuite.app"

  zap trash: [
    "~/Library/Caches/com.electron.lark",
    "~/Library/Caches/com.electron.lark.helper",
    "~/Library/Caches/com.larksuite.larkApp.helper",
    "~/Library/HTTPStorages/com.larksuite.larkApp.helper",
    "~/Library/Preferences/com.electron.lark.helper.plist",
    "~/Library/Preferences/com.larksuite.larkApp.plist",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
