cask "powershell" do
  version "7.1.0"
  sha256 "9b7397266711b279b5413f42abc899730539c8d78a29fd116e19a1bb78244d78"

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-x64.pkg"
  appcast "https://github.com/PowerShell/PowerShell/releases.atom"
  name "PowerShell"
  desc "Command-line shell and scripting language"
  homepage "https://github.com/PowerShell/PowerShell"

  livecheck do
    url :homepage
    strategy :github_latest
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
