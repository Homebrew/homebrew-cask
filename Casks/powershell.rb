cask "powershell" do
  version "7.2.0"

  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "f73682927bdadb127cf0c18641d5efe9ea12e53053e65d5c54f06fd4ef413a4a"
  else
    sha256 "6293A48CEAD807DD3C9F932176021533254BD6883754C5574E36A1775D797959"
  end

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-#{arch}.pkg"
  name "PowerShell"
  desc "Command-line shell and scripting language"
  homepage "https://github.com/PowerShell/PowerShell"

  livecheck do
    url :homepage
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*)$/)
  end

  depends_on macos: ">= :mojave"

  pkg "powershell-#{version}-osx-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.powershell"

  zap trash: [
    "~/.cache/powershell",
    "~/.config/PowerShell",
    "~/.local/share/powershell",
  ]
end
