cask "powershell" do
  arch arm: "arm64", intel: "x64"

  version "7.3.4"
  sha256 arm:   "afd80f3aebd68ad2b00977dcebc4c08d1e651d0763449935ce50aa3bf655e40e",
         intel: "1a09511f1cec1cc491354413eaff3502641f0caf4e5a6f317b038830b9f1e53f"

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-#{arch}.pkg"
  name "PowerShell"
  desc "Command-line shell and scripting language"
  homepage "https://github.com/PowerShell/PowerShell"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on formula: "openssl"
  depends_on macos: ">= :mojave"

  pkg "powershell-#{version}-osx-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.powershell"

  zap trash: [
    "~/.cache/powershell",
    "~/.config/powershell",
    "~/.local/share/powershell",
  ]

  caveats <<~EOS
    To use Homebrew in PowerShell, set:
      Add-Content -Path $PROFILE.CurrentUserAllHosts -Value '$(#{HOMEBREW_PREFIX}/bin/brew shellenv) | Invoke-Expression'
  EOS
end
