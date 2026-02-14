cask "trex" do
  version "2.0.0"
  sha256 "4e8defc680daa6e09cb2daba576aa243683c775b93a9510ce5f12544d222de4d"

  url "https://github.com/amebalabs/TRex/releases/download/v#{version}/TRex-#{version}.zip"
  name "TRex"
  desc "Easy to use text extraction tool"
  homepage "https://github.com/amebalabs/TRex/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "TRex.app"

  zap trash: [
    "~/Library/Application Scripts/com.ameba.TRex-LaunchAtLoginHelper",
    "~/Library/Caches/com.ameba.TRex",
    "~/Library/Containers/com.ameba.TRex-LaunchAtLoginHelper",
    "~/Library/Preferences/com.ameba.TRex.plist",
  ]
end
