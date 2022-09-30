cask "dictionaries" do
  version "2.0"
  sha256 "bdddac7d12b9a30a1bea5d7150a2fa41b83461fbfcc8d3b6ae2fb99d4fe2b20e"

  url "https://download.dictionaries.io/mac/Dictionaries-#{version}.zip"
  name "Dictionaries"
  desc "Translate words without ever opening a dictionary"
  homepage "https://dictionaries.io/"

  livecheck do
    url "https://download.dictionaries.io/mac/"
    regex(%r{href=.*?/Dictionaries-(\d+(?:\.\d+)+)\.zip}i)
  end

  app "Dictionaries.app"

  zap trash: [
    "~/Library/Containers/io.dictionaries.Dictionaries",
    "~/Library/Preferences/io.dictionaries.Dictionaries.plist",
  ]

  caveats do
    license "https://dictionaries.io/terms"

    <<~EOS
      Version 2 is a major upgrade and requires a new license.
      Previous versions of the application are discontinued and won't receive updates anymore.
      See https://dictionaries.io/version2 for more details
    EOS
  end
end
