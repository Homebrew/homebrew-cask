cask "softu2f" do
  version "0.0.19"
  sha256 "a70e41c69acab59fdac6c03aab70675177f94db31069a5b15166f067e23db97f"

  url "https://github.com/github/SoftU2F/releases/download/#{version}/SoftU2F.pkg"
  appcast "https://github.com/github/SoftU2F/releases.atom"
  name "Soft U2F"
  desc "Software-based U2F authenticator"
  homepage "https://github.com/github/SoftU2F"

  depends_on macos: ">= :sierra"

  pkg "SoftU2F.pkg"

  uninstall launchctl: "com.github.SoftU2F",
            kext:      "com.github.SoftU2FDriver",
            delete:    "/Applications/SoftU2F.app",
            pkgutil:   "com.GitHub.SoftU2F"
end
