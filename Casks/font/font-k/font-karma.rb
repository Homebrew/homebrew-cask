cask "font-karma" do
  version "2.000"
  sha256 "ebbe01be41c18aed6e538ea8d88eec65bb1bca046afc36b2fc6a84e808bda7e4"

  url "https://github.com/itfoundry/karma/releases/download/v#{version}/karma-#{version.dots_to_underscores}.zip"
  name "Karma"
  homepage "https://github.com/itfoundry/karma"

  font "Karma-Bold.otf"
  font "Karma-Light.otf"
  font "Karma-Medium.otf"
  font "Karma-Regular.otf"
  font "Karma-SemiBold.otf"

  # No zap stanza required
end
