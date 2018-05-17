cask 'powerline-go' do
  version '1.11.0'
  sha256 '84f8fbf7bf47a432f138ec2eb9a7ebd22f79f32910a549cfb906ff821c82e8a3'

  url "https://github.com/justjanne/powerline-go/releases/download/v#{version}/powerline-go-darwin-amd64"
  appcast 'https://github.com/justjanne/powerline-go/releases.atom',
          checkpoint: '605d60490164289b95c5a20ce6d1a2c92e93b790ab9b1aca2a958c8db2a9cbdd'
  name 'powerline-go'
  homepage 'https://github.com/justjanne/powerline-go'

  binary 'powerline-go-darwin-amd64', target: 'powerline-go'

  caveats <<~EOS
    Append the following to your ~/.bash_profile:
      function _update_ps1() {
        PS1="$(powerline-go -error $?)"
      }
      PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

    You will need to either use a powerline patched font or specify a different
    mode if you want the prompt to look right -- see powerline-go --help
  EOS
end
