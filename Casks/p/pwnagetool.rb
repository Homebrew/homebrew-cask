cask "pwnagetool" do
  version "5.1.1"
  sha256 "84262734ad9f9186bce14a4f939d7ea290ed187782fdfa549a82c28bf837c808"

  url "https://iphoneroot.com/download/PwnageTool_#{version}.dmg"
  name "PwnageTool"
  homepage "https://iphoneroot.com/utilities/#PwnageTool"

  disable! date: "2024-07-16", because: "is 32-bit only"

  app "PwnageTool.app"
end
