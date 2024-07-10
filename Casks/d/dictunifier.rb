cask "dictunifier" do
  version "2.1"
  sha256 "ff80b354ebcbe7ddad0e01d64c667e6a026d92f6bac01d380ec009205679f14c"

  url "https://github.com/jjgod/mac-dictionary-kit/releases/download/v#{version}/DictUnifier-#{version}.zip"
  name "DictUnifier"
  desc "Dictionary conversion tool"
  homepage "https://github.com/jjgod/mac-dictionary-kit/"

  deprecate! date: "2024-07-10", because: :unmaintained

  app "DictUnifier.app"

  zap trash: "~/Library/Saved Application State/org.jjgod.DictUnifier.savedState"

  caveats do
    requires_rosetta
  end
end
