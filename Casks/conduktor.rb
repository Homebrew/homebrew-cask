cask "conduktor" do
  version "2.16.1"
  sha256 "b8bc5051529dd5f7a6ab0cd2811f0af896d50ecfd5adac4c829ff203a79e20d5"

  url "https://github.com/conduktor/builds/releases/download/v#{version}/Conduktor-#{version}.pkg", verified: "https://github.com/conduktor"
  name "conduktor"
  desc "Beautiful desktop application to manage an Apache Kafka ecosystem"
  homepage "https://www.conduktor.io/"

  pkg "Conduktor-#{version}.pkg"

  uninstall pkgutil: [
    "io.conduktor.app.Conduktor",
  ]
end
