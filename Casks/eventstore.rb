cask 'eventstore' do
  version '5.0.6'
  sha256 'b3a44034c07ee8c6dd5c3bb997e310ea333448068cb6e8bfed0bb7c8099726e0'

  url "https://eventstore.org/downloads/macos/EventStore-OSS-MacOS-macOS-v#{version}.tar.gz"
  name 'Event Store'
  homepage 'https://eventstore.org/'

  binary "EventStore-OSS-MacOS-macOS-v#{version}/eventstore"
  binary "EventStore-OSS-MacOS-macOS-v#{version}/eventstore-testclient"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  eventstore_shimscript = "#{staged_path}/EventStore-OSS-MacOS-macOS-v#{version}/eventstore"
  testclient_shimscript = "#{staged_path}/EventStore-OSS-MacOS-macOS-v#{version}/eventstore-testclient"

  preflight do
    IO.write eventstore_shimscript, <<~EOS
      #!/bin/sh
      cd "#{staged_path}/EventStore-OSS-MacOS-macOS-v#{version}"
      exec "#{staged_path}/EventStore-OSS-MacOS-macOS-v#{version}/run-node.sh" "$@"
    EOS

    IO.write testclient_shimscript, <<~EOS
      #!/bin/sh
      exec "#{staged_path}/EventStore-OSS-MacOS-macOS-v#{version}/testclient" "$@"
    EOS
  end
end
