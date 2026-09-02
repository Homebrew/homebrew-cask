cask "font-opendyslexic" do
  version "20160623-Stable"
  sha256 "f07db722dabcdc359abca2fbb0a0e77a6b2a997db0fe694df30da32f7ec15c96"

  url "https://forge.hackers.town/antijingoist/opendyslexic/archive/#{version}.tar.gz"
  name "OpenDyslexic"
  homepage "https://forge.hackers.town/antijingoist/opendyslexic"

  # Upstream has switched from the YYYYMMDD-Stable version format to versions
  # like v0.0.1 but these newer versions are marked as pre-release. The older,
  # stable tags don't have corresponding releases, so there is no "latest"
  # release. We have to check the Git tags for now but we'll have to switch to
  # checking the "latest" release once there is a newer stable version,
  # otherwise the date-based versions will always be treated as newer (as
  # a number like 20160623 will remain higher).
  livecheck do
    url "https://forge.hackers.town/antijingoist/opendyslexic.git"
    regex(/^v?(\d+(?:\.\d+)+|\d+(?:\.\d+)*[._-]Stable)$/i)
    # url "https://forge.hackers.town/api/v1/repos/antijingoist/opendyslexic/releases/latest"
    # regex(/^v?(\d+(?:\.\d+)+)$/i)
    # strategy :json do |json, regex|
    #   json["tag_name"]&.[](regex, 1)
    # end
  end

  font "opendyslexic/otf/OpenDyslexic-Bold.otf"
  font "opendyslexic/otf/OpenDyslexic-BoldItalic.otf"
  font "opendyslexic/otf/OpenDyslexic-Italic.otf"
  font "opendyslexic/otf/OpenDyslexic-Regular.otf"
  font "opendyslexic/otf/OpenDyslexicAlta-Bold.otf"
  font "opendyslexic/otf/OpenDyslexicAlta-BoldItalic.otf"
  font "opendyslexic/otf/OpenDyslexicAlta-Italic.otf"
  font "opendyslexic/otf/OpenDyslexicAlta-Regular.otf"
  font "opendyslexic/otf/OpenDyslexicMono-Regular.otf"

  # No zap stanza required
end
