cask 'gogs' do
  version '0.9.48'
  sha256 '8afbd71fde279e77ed5b16c8a80ef409661ccb3953bf6cc867fbede532686475'

  url "https://cdn.gogs.io/gogs_v#{version}_darwin_amd64.zip"
  name 'Go Git Service'
  homepage 'https://gogs.io'
  license :mit

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gogs_wrapper"

  binary shimscript, target: 'gogs'

  preflight do
    IO.write shimscript, <<-EOF.undent
      #!/bin/sh
      cd '#{staged_path}/gogs' && ./gogs "$@"
    EOF
    FileUtils.chmod '+x', shimscript
  end
end
