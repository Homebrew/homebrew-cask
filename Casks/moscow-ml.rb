cask "moscow-ml" do
  version "2.10.1"
  sha256 "4b3e2035b106c688e43e7d415ca74ca8970f74656cc2c17326c5fb7d1f948ca0"

  url "https://github.com/kfl/mosml/releases/download/ver-#{version}/mosml-#{version}.pkg",
      verified: "github.com/kfl/mosml/"
  name "Moscow ML"
  desc "Light-weight implementation of Standard ML"
  homepage "https://mosml.org/"

  pkg "mosml-#{version}.pkg"

  uninstall pkgutil: "org.mosml"
end
