cask 'prince' do
  version '13.4'
  sha256 '42256197d9e5391336cf5b449933831aec76de7de84e7e8f8606c845b35cf115'

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
