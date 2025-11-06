cask "freeeditor" do
  version "1.0.0"
  sha256 "eb95a0df6d0e616dfca8831dbdda37a163f5dd4707601b21b440fc50dfb2023e"

  url "https://github.com/zstar1003/FreeEditor/releases/download/v#{version}/FreeEditor-#{version}-arm64.dmg"
  name "FreeEditor"
  desc "Free two-column Markdown editor"
  homepage "https://github.com/zstar1003/FreeEditor"

  depends_on macos: ">= :big_sur"

  app "FreeEditor.app"

  zap trash: [
    "~/Library/Application Support/FreeEditor",
    "~/Library/Caches/FreeEditor",
  ]
end
