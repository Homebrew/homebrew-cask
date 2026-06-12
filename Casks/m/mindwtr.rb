cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.10"
  sha256 arm:   "701f3877ac6509776b133b443a54447a39db3c18b86c55d958d5c0c33345c631",
         intel: "cef9477afc85162a3a20f8d50b81831f2747472e79f571d0967cdb6f3fb9995b"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"

  depends_on :macos

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Support/mindwtr",
    "~/Library/Application Support/tech.dongdongbh.mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
  ]
end
