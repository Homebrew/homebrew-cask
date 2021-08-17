cask "armitage" do
  version "15.08.13"
  sha256 "f44af478248fd01e71ea7e7bcfa558e4c9b291a78b0d1df1ad245c34cabd896b"

  url "http://www.fastandeasyhacking.com/download/armitage#{version.no_dots}.dmg"
  name "Armitage"
  desc "Scriptable collaboration tool for Metasploit"
  homepage "http://www.fastandeasyhacking.com/"

  livecheck do
    url "http://www.fastandeasyhacking.com/download/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/armitage(\d\d+)(\d\d+)(\d\d+)\.dmg}i)
      "#{match[1]}.#{match[2]}.#{match[3]}"
    end
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
