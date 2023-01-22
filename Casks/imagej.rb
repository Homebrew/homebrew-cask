cask "imagej" do
  version "1.53"

  on_intel do
    sha256 "5d405f30e779e4dac5e8a669d0cf8a5c1f0afa5f17b4908885e561817705e422"

    url "https://wsr.imagej.net/distros/osx/ij#{version.no_dots}-osx-java8.zip",
        verified: "wsr.imagej.net/distros/osx/"
  end
  on_arm do
    sha256 "e464760174af0bcff7849db6e12090a4cbb1b0a1897a71dc1a999855d6e22e98"

    url "https://wsr.imagej.net/distros/osx/ij#{version.no_dots}-osx-arm-java13.zip",
        verified: "wsr.imagej.net/distros/osx/"
  end

  name "ImageJ"
  desc "Image Processing and Analysis in Java"
  homepage "https://imagej.nih.gov/ij/index.html"

  livecheck do
    url "https://imagej.nih.gov/ij/download.html"
    regex(%r{href=.*?/ij(\d+(?:\.\d+)*)[._-]osx[._-]java\d+\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        text = match.first
        text.include?(".") ? text : text.sub(/(\d)(\d+)/, '\1.\2')
      end
    end
  end

  app "ImageJ.app"

  zap trash: "~/Library/Saved Application State/ImageJ.savedState"
end
