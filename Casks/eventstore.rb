cask 'eventstore' do
  version '3.9.4'
  sha256 '337152fa65fa8472052cc02d5efaf872230b7ecad07e3d7979f5fd238e69e3f6'

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
  end
end
