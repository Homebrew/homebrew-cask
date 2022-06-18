cask "dockutil" do
  version "3.0.2"
  sha256 "175137ea747e83ed221d60b18b712b256ed31531534cde84f679487d337668fd"

  url "https://github.com/kcrawford/dockutil/releases/download/#{version}/dockutil-#{version}.pkg"
  name "dockutil"
  desc "Command-line utility for managing dock items"
  homepage "https://github.com/kcrawford/dockutil"

  conflicts_with formula: "dockutil"
  depends_on macos: ">= :big_sur"

  pkg "dockutil-#{version}.pkg"

  uninstall pkgutil: "dockutil.cli.tool"

  caveats "v3.x is compatible with macOS 11+. Use the homebrew formula which provides v2.x for earlier OSes."
end
