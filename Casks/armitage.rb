cask "armitage" do
  version "15.08.13"
  sha256 "f44af478248fd01e71ea7e7bcfa558e4c9b291a78b0d1df1ad245c34cabd896b"

  url "http://www.fastandeasyhacking.com/download/armitage#{version.no_dots}.dmg"
  name "Armitage"
  homepage "http://www.fastandeasyhacking.com/"

  livecheck do
    url "http://www.fastandeasyhacking.com/changelog"
    strategy :page_match
    regex(%r{href=.*?/armitage(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Armitage.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/armitage.wrapper.sh"
  binary shimscript, target: "armitage"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      java "$@" -jar '#{appdir}/Armitage.app/Contents/Java/armitage.jar'
    EOS
  end
end
