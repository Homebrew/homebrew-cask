cask 'prince' do
  version '12.5'
  sha256 'd7940c2f60b1e9657db1deb1144b2496cc34c728f650c36b24d6885b964e9aed'

  url "https://www.princexml.com/download/prince-#{version}-macosx.tar.gz"
  appcast 'https://www.princexml.com/download/'
  name 'Prince'
  homepage 'https://www.princexml.com/'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/prince-#{version}-macosx/prince.wrapper.sh"
  binary shimscript, target: 'prince'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/prince-#{version}-macosx/lib/prince/bin/prince' --prefix '#{staged_path}/prince-#{version}-macosx/lib/prince' "$@"
    EOS
  end
end
