cask "openconnect-gui" do
  version "1.5.3"
  sha256 "b4e5c8618cb327cd3ba612a25976d7df7b49f612669f90488d8c680e32f8f61f"

  # github.com/openconnect/openconnect-gui/ was verified as official when first introduced to the cask
  url "https://github.com/openconnect/openconnect-gui/releases/download/v#{version}/openconnect-gui-#{version}.high_sierra.bottle.tar.gz"
  appcast "https://github.com/openconnect/openconnect-gui/releases.atom"
  name "OpenConnect-GUI"
  desc "GitLab mirror - Graphical OpenConnect client (beta phase)"
  homepage "https://openconnect.github.io/openconnect-gui/"

  app "openconnect-gui/#{version}/OpenConnect-GUI.app"

  zap delete: [
    "~/Library/Application Support/OpenConnect-GUI Team",
    "~/Library/Preferences/io.github.openconnect.openconnect-gui.plist",
  ]
end
