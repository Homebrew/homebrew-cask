cask 'dlite' do
  version '1.0.4'
  sha256 '905c1c69933891173c584006fd7b3499e3739d87358bd5cd661fd9fede4bd8cb'

  url 'https://github.com/nlf/dlite/releases/download/1.0.4/dlite'
  name 'dlite'
  homepage 'https://github.com/nlf/dlite'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container type: :naked

  binary 'dlite'

  postflight do
    set_permissions "#{staged_path}/dlite", '0755'
  end

  caveats 'To set up dlite, `sudo dlite install`.  See the output of `sudo dlite install --help` for additional options.'
end
