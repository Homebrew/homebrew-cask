cask "powershell" do
  version "7.1.3"
  sha256 "6E889BC771463555F8639AA3B40E9D571CE365E1C442380EE361189575B27B0F"

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-x64.pkg"
  name "PowerShell"
  desc "Command-line shell and scripting language"
  homepage "https://github.com/PowerShell/PowerShell"

  livecheck do
    url :homepage
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*)$/)
  end

  depends_on macos: ">= :high_sierra"

  pkg "powershell-#{version}-osx-x64.pkg"

  uninstall pkgutil: "com.microsoft.powershell"

  zap trash: [
    "~/.cache/powershell",
    "~/.config/PowerShell",
    "~/.local/share/powershell",
  ]
end
