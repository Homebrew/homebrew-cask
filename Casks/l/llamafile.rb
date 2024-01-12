cask "llamafile" do
  version "0.6"
  sha256 "52a4134ad6eb9a04f13bc8cadd08728449ebfbf9ea2042545ba95e131547f885"

  url "https://github.com/Mozilla-Ocho/llamafile/releases/download/#{version}/llamafile-#{version}.zip"
  name "llamafile"
  desc "Distribute and run LLMs with a single file"
  homepage "https://github.com/Mozilla-Ocho/llamafile"

  livecheck do
    url :url
    strategy :github_releases
  end

  binary "llamafile-#{version}/bin/llamafile"
  binary "llamafile-#{version}/bin/llamafile-convert"
  binary "llamafile-#{version}/bin/llamafile-quantize"
  binary "llamafile-#{version}/bin/llamafile-perplexity"
  manpage "llamafile-#{version}/share/man/man1/llamafile.1"
  manpage "llamafile-#{version}/share/man/man1/llamafile-quantize.1"
  manpage "llamafile-#{version}/share/man/man1/llamafile-perplexity.1"
end
