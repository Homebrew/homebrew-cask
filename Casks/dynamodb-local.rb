cask 'dynamodb-local' do
  version :latest
  sha256 :no_check

  # s3-us-west-2.amazonaws.com/dynamodb-local was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz'
  name 'Amazon DynamoDB Local'
  homepage 'https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.html'

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/dynamodb-local.wrapper.sh"
  binary shimscript, target: 'dynamodb-local'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      cd "$(dirname "$(readlink -n "${0}")")" && \
        java -Djava.library.path='./DynamoDBLocal_lib' -jar 'DynamoDBLocal.jar' "$@"
    EOS
  end

  caveats do
    depends_on_java('6+')
  end
end
