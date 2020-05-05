cask 'denpo' do
	version 'beta 0.2 build 2'
	sha256 '3b5277cbb87b8a29c9bae4f777991e14497d887024bf19c6e31088f8d305a22f'

	url "https://denpo.org/download/Denpo#{version.gsub(/beta |\./, "_").gsub(/ build /, "_b_")}.dmg"
	name 'Denpo'
	homepage 'https://denpo.org/'
	app 'Denpo.app'
end
