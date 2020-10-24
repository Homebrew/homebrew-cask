cask "sitebulb" do
  version "4.4"
  sha256 "277c1f3d6d14e172d283e2f9646211e651cd9e9feaf408fdbab6a48e1a52bfac"

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast "https://sitebulb.com/download/",
          must_contain: version.major_minor
  name "Sitebulb"
  desc "Website auditing tool"
  homepage "https://sitebulb.com/"

  app "Sitebulb.app"
end
