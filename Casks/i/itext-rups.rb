cask "itext-rups" do
  version "7.2.5"
  sha256 "509e81cbe629b331a80e9344a11fe573e6e4e065c4319c1532ac175da9af5dec"

  url "https://github.com/itext/i7j-rups/releases/download/#{version}/iText7-RUPS-#{version}-only-jars.zip"
  name "iText RUPS"
  desc "GUI app for inspecting PDF internals"
  homepage "https://github.com/itext/i7j-rups"

  livecheck do
    url :url
    strategy :github_latest
  end

  container type: :zip

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/itext-rups.wrapper.sh"
  binary shimscript, target: "itext-rups"

  preflight do
    jar_path = "#{staged_path}/itext-rups-#{version}.jar"
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec java -jar "#{jar_path}" "$@"
    EOS
  end

  zap trash: "~/Library/Preferences/com.itextpdf.rups.plist"

  caveats do
    depends_on_java "11+"
  end
  caveats <<~EOS
    To launch iText RUPS, run:
      itext-rups [<target>.pdf]
  EOS
end
