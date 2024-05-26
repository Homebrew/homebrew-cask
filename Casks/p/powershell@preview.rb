cask "powershell@preview" do
  arch arm: "arm64", intel: "x64"

  version "7.5.0-preview.3"
  sha256 arm:   "5e2365f24b8ab74fdfeb091bca5e4f0cc69d88b9f060be723426a214258691ce",
         intel: "62af23021c3777f5844903458133ab787683e605ced0bb074b36df5edafa5167"

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-#{arch}.pkg"
  name "PowerShell"
  desc "Command-line shell and scripting language"
  homepage "https://github.com/PowerShell/PowerShell"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[_-](?:preview|rc)(?:\.\d+)?)$/i)
  end

  depends_on formula: "openssl"
  depends_on macos: ">= :mojave"

  pkg "powershell-#{version}-osx-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.powershell-preview"

  zap trash: [
        "~/.cache/powershell",
        "~/.config/PowerShell",
        "~/.local/share/powershell",
      ],
      rmdir: [
        "~/.cache",
        "~/.config",
        "~/.local",
        "~/.local/share",
      ]

  caveats <<~EOS
    To use Homebrew in PowerShell, set:
      Add-Content -Path $PROFILE.CurrentUserAllHosts -Value '$(#{HOMEBREW_PREFIX}/bin/brew shellenv) | Invoke-Expression'
  EOS
end
