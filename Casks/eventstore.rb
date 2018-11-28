cask 'eventstore' do
  version '4.1.1'
  sha256 'ac1fdb590305ef829b7e50391af7ed60580dda46bc6ea87a0fe325832b74020f'

  url "https://eventstore.org/downloads/EventStore-OSS-MacOSX-v#{version}.tar.gz"
  name 'Event Store'
  homepage 'https://eventstore.org/'

  binary "EventStore-OSS-MacOSX-v#{version}/eventstore"
  binary "EventStore-OSS-MacOSX-v#{version}/eventstore-testclient"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  eventstore_shimscript = "#{staged_path}/EventStore-OSS-MacOSX-v#{version}/eventstore"
  testclient_shimscript = "#{staged_path}/EventStore-OSS-MacOSX-v#{version}/eventstore-testclient"

  preflight do
    IO.write eventstore_shimscript, <<~EOS
      #!/bin/sh
      cd "#{staged_path}/EventStore-OSS-MacOSX-v#{version}"
      exec "#{staged_path}/EventStore-OSS-MacOSX-v#{version}/run-node.sh" "$@"
    EOS

    IO.write testclient_shimscript, <<~EOS
      #!/bin/sh
      exec "#{staged_path}/EventStore-OSS-MacOSX-v#{version}/testclient" "$@"
    EOS
  end
end
