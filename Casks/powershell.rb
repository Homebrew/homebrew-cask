cask "powershell" do
  arch arm: "arm64", intel: "x64"

  version "7.3.1"
  sha256 arm:   "adb1e56fff1e3b4bd1403e75089b92ef8b7432dca6fe48cf94ed84a16936cd7e",
         intel: "b6c8d4f8ed0cd1854cd00fe8a7816428093e71fddc30546a3406c07f409c02ae"

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
