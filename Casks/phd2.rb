cask "phd2" do
  version "2.6.11"
  sha256 "bcd86fb9315edf095dd4c2506d5e2ce1e71196f45178e5828674e215b66bff12"

  url "https://openphdguiding.org/PHD2-#{version}-OSX-64.zip"
  name "PHD2"
  desc "Telescope guiding software"
  homepage "https://openphdguiding.org/"

  livecheck do
    url "https://openphdguiding.org/changelog/"
    regex(%r{href=.*?/PHD2-(\d+(?:\.\d+)*)-OSX-64\.zip}i)
  end

  app "PHD2.app"
end
