cask "font-liberation" do
  version "2.1.5,7261482"
  sha256 "7191c669bf38899f73a2094ed00f7b800553364f90e2637010a69c0e268f25d0"

  url "https://github.com/liberationfonts/liberation-fonts/files/#{version.csv.second}/liberation-fonts-ttf-#{version.csv.first}.tar.gz"
  name "Liberation"
  homepage "https://github.com/liberationfonts/liberation-fonts"

  livecheck do
    url "https://github.com/liberationfonts/liberation-fonts/releases/latest"
    strategy :page_match do |page|
      page.scan(%r{href=.*?files/(\d+)/liberation[._-]fonts[._-]ttf[._-]v?(\d+(?:\.\d+)+)\.t}i)
          .map { |matches| "#{matches[1]},#{matches[0]}" }
    end
  end

  font "liberation-fonts-ttf-#{version.before_comma}/LiberationMono-Bold.ttf"
  font "liberation-fonts-ttf-#{version.before_comma}/LiberationMono-BoldItalic.ttf"
  font "liberation-fonts-ttf-#{version.before_comma}/LiberationMono-Italic.ttf"
  font "liberation-fonts-ttf-#{version.before_comma}/LiberationMono-Regular.ttf"
  font "liberation-fonts-ttf-#{version.before_comma}/LiberationSans-Bold.ttf"
  font "liberation-fonts-ttf-#{version.before_comma}/LiberationSans-BoldItalic.ttf"
  font "liberation-fonts-ttf-#{version.before_comma}/LiberationSans-Italic.ttf"
  font "liberation-fonts-ttf-#{version.before_comma}/LiberationSans-Regular.ttf"
  font "liberation-fonts-ttf-#{version.before_comma}/LiberationSerif-Bold.ttf"
  font "liberation-fonts-ttf-#{version.before_comma}/LiberationSerif-BoldItalic.ttf"
  font "liberation-fonts-ttf-#{version.before_comma}/LiberationSerif-Italic.ttf"
  font "liberation-fonts-ttf-#{version.before_comma}/LiberationSerif-Regular.ttf"

  # No zap stanza required
end
