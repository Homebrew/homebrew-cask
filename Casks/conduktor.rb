cask "conduktor" do
  version "2.16.0"
  sha256 "437a4887346d408f2fa25708998f9513dedc1da66ef05f090d9e2d53be6c61fd"

  url "https://github.com/conduktor/builds/releases/download/v#{version}/Conduktor-#{version}.pkg", verified: "https://github.com/conduktor"
  name "conduktor"
  desc "Beautiful desktop application to manage an Apache Kafka ecosystem"
  homepage "https://www.conduktor.io/"

  pkg "Conduktor-#{version}.pkg"

  uninstall pkgutil: [
    "io.conduktor.app.Conduktor",
  ]
end
