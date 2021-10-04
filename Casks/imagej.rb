cask "imagej" do
  version "1.53"

  if Hardware::CPU.intel?
    sha256 "4093259645569f5dc04ef5576a5f54ab878c0923f48c03b866f5d56f2edc078f"

    url "https://wsr.imagej.net/distros/osx/ij#{version.no_dots}-osx-java8.zip",
        verified: "wsr.imagej.net/distros/osx/"
  else
    sha256 "e464760174af0bcff7849db6e12090a4cbb1b0a1897a71dc1a999855d6e22e98"

    url "https://wsr.imagej.net/distros/osx/ij#{version.no_dots}-osx-arm-java13.zip",
        verified: "wsr.imagej.net/distros/osx/"
  end

  name "ImageJ"
  desc "Image Processing and Analysis in Java"
  homepage "https://imagej.nih.gov/ij/index.html"

  livecheck do
    url "https://imagej.nih.gov/ij/download.html"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ij(\d+)(\d+)(\d+)[._-]osx[._-]arm[._-]java\d+\.zip}i)
      "#{match[1]}.#{match[2]}#{match[3]}"
    end
  end

  app "ImageJ.app"
end
