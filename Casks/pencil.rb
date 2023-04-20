cask "pencil" do
  version "3.1.1"
  sha256 "ea72ea7a528e3bb744a1730b9eed4b24af87e649c7feb5906182ab81ef903af5"

  url "https://pencil.evolus.vn/dl/V#{version}.ga/Pencil-#{version}.ga-universal.dmg"
  name "Pencil"
  name "The Pencil Project"
  desc "GUI prototyping tool"
  homepage "https://pencil.evolus.vn/"

  livecheck do
    url "https://github.com/evolus/pencil/releases"
    strategy :github_latest
  end

  app "Pencil.app"
end
