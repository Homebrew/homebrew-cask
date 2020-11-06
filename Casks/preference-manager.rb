cask "preference-manager" do
  version "4.4.4.0"
  sha256 "cee73faea96e0a83666ec070c49d302d53c9a23010c6a3579c0ee8da3af35d30"

  url "https://www.digitalrebellion.com/download/prefman?version=#{version.no_dots}"
  appcast "https://www.digitalrebellion.com/prefman/changelog",
          must_contain: version.major_minor_patch
  name "Preference Manager"
  homepage "https://www.digitalrebellion.com/prefman/"

  app "Preference Manager.app"
end
