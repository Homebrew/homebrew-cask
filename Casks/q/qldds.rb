cask "qldds" do
  version "1.33"
  sha256 "7342f788f750bf4f40e84f6fcbfefb4603e78d00c99d55fae4ba65a78f9ff20f"

  url "https://github.com/Marginal/QLdds/releases/download/rel-#{version.no_dots}/QLdds_#{version.no_dots}.pkg"
  name "QuickLook DDS"
  desc "QuickLook plugin for DirectDraw Surface (DDS) texture files"
  homepage "https://github.com/Marginal/QLdds"

  livecheck do
    url :url
    regex(/Release\s+(\d+(?:\.\d+)*)/i)
    strategy :github_latest
  end

  pkg "QLdds_#{version.no_dots}.pkg"

  uninstall launchctl: "uk.org.marginal.qldds.mdimporter",
            pkgutil:   "uk.org.marginal.qldds"
end
