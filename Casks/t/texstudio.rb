cask "texstudio" do
  arch arm: "-m1"
  ext = on_arch_conditional arm: "zip", intel: "dmg"
  app_suffix = on_arch_conditional arm: "-#{version}-osx-m1", intel: ""

  version "4.7.3"
  sha256 arm:   "314da45d6071c4e18643282b25f6df7114bd42964d85b63526ffbfa048d993e7",
         intel: "ce1cd5ab82d907165e232dfc5ccf8329f086e375f4936c6b9da9b0091ddd0674"

  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx#{arch}.#{ext}",
      verified: "github.com/texstudio-org/texstudio/"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  depends_on macos: ">= :big_sur"

  app "texstudio#{app_suffix}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
