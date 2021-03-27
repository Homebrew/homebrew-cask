cask "prince" do
  version "14"
  sha256 "630a15af0cbca230971adeafdfe17c0ff4f87e2c1ee2b41d8df725771e77ae2b"

  url "https://www.princexml.com/download/prince-#{version}-macos.zip"
  appcast "https://www.princexml.com/download/"
  name "Prince"
  homepage "https://www.princexml.com/"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/prince-#{version}-macos/prince.wrapper.sh"
  binary shimscript, target: "prince"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/prince-#{version}-macos/lib/prince/bin/prince' --prefix '#{staged_path}/prince-#{version}-macos/lib/prince' "$@"
    EOS
  end
end
