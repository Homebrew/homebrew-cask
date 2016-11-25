cask 'red' do
  version '0.6.1'
  sha256 'afefaa392e5dbc1ec6d8805376ecffe86a1f6d1ce46d426800556f3c4f698693'

  url 'http://static.red-lang.org/dl/mac/red-061'
  name 'red-lang'
  homepage 'http://www.red-lang.org'

  container type: :naked

  binary 'red'

  preflight do
    system_command '/bin/mv', args: ["#{staged_path}/red-061", "#{staged_path}/red"]
  end

  postflight do
    set_permissions "#{staged_path}/red", '0755'
  end
end
