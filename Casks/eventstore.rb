cask 'eventstore' do
  version '3.9.3'
  sha256 'a4ceca878a833e4f30235b08ce1764d5072935484c126c93fb05ab2188a2a9ee'

  url "http://download.geteventstore.com/binaries/EventStore-OSS-MacOSX-v#{version}.tar.gz"
  name 'Event Store'
  homepage 'https://geteventstore.com/'

  binary "EventStore-OSS-MacOSX-v#{version}/eventstore"
  binary "EventStore-OSS-MacOSX-v#{version}/eventstore-testclient"

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  eventstore_shimscript = "#{staged_path}/EventStore-OSS-MacOSX-v#{version}/eventstore"
  testclient_shimscript = "#{staged_path}/EventStore-OSS-MacOSX-v#{version}/eventstore-testclient"

  preflight do
    IO.write eventstore_shimscript, <<-EOS.undent
      #!/bin/sh
      cd "#{staged_path}/EventStore-OSS-MacOSX-v#{version}"
      exec "#{staged_path}/EventStore-OSS-MacOSX-v#{version}/run-node.sh" "$@"
    EOS

    IO.write testclient_shimscript, <<-EOS.undent
      #!/bin/sh
      exec "#{staged_path}/EventStore-OSS-MacOSX-v#{version}/testclient" "$@"
    EOS

    set_permissions eventstore_shimscript, '+x'
    set_permissions testclient_shimscript, '+x'
  end
end
