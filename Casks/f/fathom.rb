cask "fathom" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_arm64"

  version "3.0.0"
  sha256 arm:   "a34b945e3df3da2dfea900d6ebaa3924643e7c94c09c866c1a5fd362df465e29",
         intel: "f364ab5977dc7ad28ff5b8f54dd728134459e5aa6e8d41f764d412114d7e57d8"

  url "https://electron-update.fathom.video/download/file/Fathom-darwin-#{arch}-#{version}.dmg"
  name "Fathom"
  desc "Record and transcribe video conferences"
  homepage "https://fathom.video/"

  livecheck do
    url "https://electron-update.fathom.video/update/darwin#{livecheck_arch}/0.0.0"
    strategy :json do |json|
      json["name"]&.tr("v", "")
    end
  end

  depends_on macos: ">= :monterey"

  app "Fathom.app"

  uninstall quit: [
    "Fathom Helper",
    "Fathom",
  ]

  zap trash: [
    "~/Library/Application Support/Fathom",
    "~/Library/Logs/Fathom",
  ]
end
