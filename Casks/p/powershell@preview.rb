cask "powershell@preview" do
  arch arm: "arm64", intel: "x64"

  version "7.6.0-preview.5"
  sha256 arm:   "b3fac2817c8b7cb2a5ab721246d5cfb0ebe759e780d9770ae209b54b58a87526",
         intel: "4ac7c96fe7cf1b49d845f5aa6c2db19c867597de555e63ff82c08851afa9f1b2"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
