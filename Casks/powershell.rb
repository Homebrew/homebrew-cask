cask "powershell" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "7.2.2"

  if Hardware::CPU.intel?
    sha256 "289093be09b6bbfbf0f41f59f1881bdc97620d979d8ef846a9e110caa5f07a7a"
  else
    sha256 "2174808f72ff5457f13530a7121608c050dc2203b1a21fec057f27a10ce5fbd7"
  end

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
