cask 'eventstore' do
  version '5.0.0'
  sha256 '5bcea119d3971c3bf9de5e0ce2a6963818a508a7071909a3d8d2b44a6d9063ed'

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
