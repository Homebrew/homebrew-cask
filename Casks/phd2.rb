cask "phd2" do
  version "2.6.10"
  sha256 "13ed63233c6937b74e1a4de2241ed49650755b8e90e4f98fda83e714ee204717"

  url "https://openphdguiding.org/PHD2-#{version}-OSX-64.zip"
  name "PHD2"
  desc "Telescope guiding software"
  homepage "https://openphdguiding.org/"

  livecheck do
    url "https://openphdguiding.org/changelog/"
    strategy :page_match
    regex(%r{href=.*?/PHD2-(\d+(?:\.\d+)*)-OSX-64\.zip}i)
  end

  app "PHD2.app"
end
