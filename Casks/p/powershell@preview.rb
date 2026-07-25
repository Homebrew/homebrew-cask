cask "powershell@preview" do
  arch arm: "arm64", intel: "x64"

  version "7.7.0-preview.3"
  sha256 arm:   "d4f7ea21d668bc0e6b84da86a020c9c1a992364e650c8edb3b8d913eade1406a",
         intel: "2f36f5768cfb14cf71e9db8aefc703d42176610730d67207d7b7f1664e28847e"

  url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-osx-#{arch}.pkg"
  name "PowerShell"
  desc "Command-line shell and scripting language"
  homepage "https://github.com/PowerShell/PowerShell"

  # There can be a notable gap between when a version is tagged and a
  # corresponding release is created, so we check releases instead of the Git
  # tags. Unstable versions are correctly marked as "pre-release" on GitHub, so
  # we have to use the `GithubReleases` strategy to identify unstable releases.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[_-](?:preview|rc)(?:\.\d+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: :big_sur

  pkg "powershell-#{version}-osx-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.powershell-preview",
            delete:  "/Applications/PowerShell-preview.app"

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
