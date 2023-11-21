cask "phd2" do
  version "2.6.12"
  sha256 "3f30394349b963b3bc7164a7341743667c5d9a5c9e1da2d2b18ac25506a7c508"

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
