cask "dockutil" do
  version "3.0.2"
  sha256 "175137ea747e83ed221d60b18b712b256ed31531534cde84f679487d337668fd"

  url "https://github.com/kcrawford/dockutil/releases/download/#{version}/dockutil-#{version}.pkg"
  name "dockutil"
  desc "Tool for managing dock items"
  homepage "https://github.com/kcrawford/dockutil"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :big_sur"

  pkg "dockutil-3.0.2.pkg"

  uninstall pkgutil: [
    "dockutil.cli.tool",
  ]
end
