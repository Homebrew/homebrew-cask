cask "imagej" do
  arch arm: "arm-java13", intel: "java8"

  version "1.54"
  sha256 arm:   "8366d8c2d56602855fd375d7fb06a4d5b755258cb96ecd83e1310709d3959d90",
         intel: "2349e9c32378dbfc2f1b3be58475161eb9d076c16938502fa2000afe116ea933"

  url "https://wsr.imagej.net/distros/osx/ij#{version.no_dots}-osx-#{arch}.zip"
  name "ImageJ"
  desc "Image Processing and Analysis in Java"
  homepage "https://imagej.net/ij/"

  livecheck do
    url "https://imagej.net/ij/download.html"
    regex(%r{href=.*?/ij[._-]?v?(\d+(?:\.\d+)*)[._-]osx[._-]java\d+\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        version = match[0]
        version.include?(".") ? version : version.sub(/(\d)(\d+)/, '\1.\2')
      end
    end
  end

  app "ImageJ.app"

  zap trash: "~/Library/Saved Application State/ImageJ.savedState"
end
