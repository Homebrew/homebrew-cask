cask "macdependency" do
  version "1.1.0"
  sha256 "02679873bd4c3b686a82ecafd26ae270b8def2c832ca5e70720ca29b104bd973"

  url "https://github.com/kwin/macdependency/releases/download/#{version}/MacDependency-#{version}.dmg"
  name "MacDependency"
  homepage "https://github.com/kwin/macdependency"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "MacDependency.app"

  caveats do
    requires_rosetta
  end
end
