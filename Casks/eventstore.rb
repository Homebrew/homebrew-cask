cask 'eventstore' do
  version '5.0.5'
  sha256 '4e0a88817f6243c3f0ef319520a628c7433af5338331f9ad45ca6192e9f8a219'

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
