cask "scap-workbench" do
  version "1.2.1"
  sha256 "e5a250a8baa6107ba719fec0d6236ece5658e1adb3a5b8dd207c00b51a311628"

  # github.com/OpenSCAP/scap-workbench/ was verified as official when first introduced to the cask
  url "https://github.com/OpenSCAP/scap-workbench/releases/download/#{version.sub(/-.+/, "")}/scap-workbench-#{version}.dmg"
  appcast "https://github.com/OpenSCAP/scap-workbench/releases.atom"
  name "scap-workbench"
  desc "SCAP Scanner And Tailoring Graphical User Interface"
  homepage "https://www.open-scap.org/tools/scap-workbench/"

  depends_on macos: ">= :sierra"

  app "scap-workbench.app"
end
