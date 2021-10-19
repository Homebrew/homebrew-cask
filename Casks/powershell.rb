cask "powershell" do
  version "7.1.5"
  sha256 "5dc08be3d40ea2267458797ff3f8370da4a163c61699dd518f0235c301a2c025"

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
