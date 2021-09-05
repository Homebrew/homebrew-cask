cask "jedit-omega" do
  if MacOS.version <= :el_capitan
    version "1.32"
    sha256 "251697fe6b76419b2cef41a89a2cb7d2e3f8caab0bc1ae82aed6c14a366fdad9"
  else
    version "2.42"
    sha256 "02dce71c9c6ee3d695ca4bff94313d5c87647777ad35560b07822c7a3f8be5d1"
  end

  url "http://download.artman21.co.jp/product/JeditOmega/JeditOmega#{version.no_dots}.dmg",
      verified: "artman21.co.jp/"
  name "Jedit Ω"
  desc "Text editor"
  homepage "http://www.artman21.com/en/jeditOmega/"

  livecheck do
    url "http://www.artman21.com/en/jeditOmega/download.html"
    # http://www.artman21.org/download/JeditOmega242.dmg
    regex(%r{href=.*?/download/JeditOmega[._-]?v?(\d+).dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      parts = match[1].chars
      "#{parts[0]}.#{parts[1]}#{parts[2]}"
    end
  end

  app "Jedit Ω.app"
end
