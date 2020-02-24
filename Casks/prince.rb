cask 'prince' do
  version '13.1'
  sha256 '93b50a308ed7070e49c8a0487a7e123a9a5bd239549ad64dc1143dd277231dff'

  url "https://www.princexml.com/download/prince-#{version}-macos.tar.gz"
  appcast 'https://www.princexml.com/download/'
  name 'Prince'
  homepage 'https://www.princexml.com/'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/prince-#{version}-macos/prince.wrapper.sh"
  binary shimscript, target: 'prince'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/prince-#{version}-macos/lib/prince/bin/prince' --prefix '#{staged_path}/prince-#{version}-macos/lib/prince' "$@"
    EOS
  end
end
